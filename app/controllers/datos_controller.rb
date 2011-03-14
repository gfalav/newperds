require 'builder'

class DatosController < ApplicationController

	def save
		debugger

		a = params['datos'][1]

    buffer = ''
    builder = Builder::XmlMarkup.new(:target=>buffer, :indent=>2)
    builder.instruct!

		@zonas = Zona.where(["distribuidora_id = ? and id not in (1)",params['distribuidora_id'].to_i])
					
		builder.init{
			builder.zonas{

				@zonas.each {|z|
					builder.zona{
						builder.zona_id(z.id)
						builder.zona(z.zona)
						builder.MEM(Dato.where(["tdato_id = 1 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.TER(Dato.where(["tdato_id = 2 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GEN(Dato.where(["tdato_id = 3 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.DIS(Dato.where(["tdato_id = 4 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GMA(Dato.where(["tdato_id = 5 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GME(Dato.where(["tdato_id = 6 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.PRO(Dato.where(["tdato_id = 7 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.REC(Dato.where(["tdato_id = 8 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
					}
				}
			}
		}

		render :xml=>buffer



	end


	def getactualiza
		
    buffer = ''
    builder = Builder::XmlMarkup.new(:target=>buffer, :indent=>2)
    builder.instruct!

		@zonas = Zona.where(["distribuidora_id = ? and id not in (1)",params['distribuidora_id'].to_i])
					
		builder.init{
			builder.zonas{

				@zonas.each {|z|
					builder.zona{
						builder.zona_id(z.id)
						builder.zona(z.zona)
						builder.MEM(Dato.where(["tdato_id = 1 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.TER(Dato.where(["tdato_id = 2 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GEN(Dato.where(["tdato_id = 3 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.DIS(Dato.where(["tdato_id = 4 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GMA(Dato.where(["tdato_id = 5 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.GME(Dato.where(["tdato_id = 6 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.PRO(Dato.where(["tdato_id = 7 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
						builder.REC(Dato.where(["tdato_id = 8 and zona_id = ? and periodo = ?",z.id,params['periodo']]).sum(:energia))
					}
				}
			}
		}

		render :xml=>buffer

	end				

	#inicializa variables
	def init

    buffer = ''
    builder = Builder::XmlMarkup.new(:target=>buffer, :indent=>2)
    builder.instruct!
					
		@distros = Distribuidora.all
		@zonas = Zona.all

		builder.init{

			builder.distribuidoras{
				@distros.each {|d|
					builder.distribuidora{
						builder.id(d.id)
						builder.distribuidora(d.distribuidora)
					}
				}
			}
			builder.zonas{
				@zonas.each {|z|
					builder.zona{
						builder.id(z.id)
						builder.zona(z.zona)
						builder.distribuidora_id(z.distribuidora_id)
					}
				}
			}


		}

		render :xml => buffer
	end

	#obtiene datos de perdidas.
	#debe venir params['distribuidora_id','perinic','perfin','zona_id']
	def getperdidas

    buffer = ''
    builder = Builder::XmlMarkup.new(:target=>buffer, :indent=>2)
    builder.instruct!

		@periodos = Dato.where(["distribuidora_id = ? and periodo >= ? and periodo <= ?",params['distribuidora_id'],params['perinic'].to_i-100,params['perfin']]).select('distinct periodo').order('periodo')

		builder.init{
			builder.periodos {
				@periodos.each { |p|
					builder.periodo{
						builder.distribuidora_id(params['distribuidora_id'])
						builder.zona_id(params['zona_id'])
						builder.periodo(p.periodo)

							if    (params['zona_id'].to_i == 1 || params['zona_id'].to_i || 9 && params['zona_id'].to_i == 18)

							  tmp = Dato.where(["tdato_id = 1 and zona_id not in (8,17,31) and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia)
							  tmp = tmp - Dato.where(["tdato_id = 1 and zona_id in (8,17,31) and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia)
							  builder.MEM(tmp)
	
								builder.TER(Dato.where(["tdato_id = 2 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.GEN(Dato.where(["tdato_id = 3 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.DIS(Dato.where(["tdato_id = 4 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.GMA(Dato.where(["tdato_id = 5 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.GME(Dato.where(["tdato_id = 6 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.PRO(Dato.where(["tdato_id = 7 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.REC(Dato.where(["tdato_id = 8 and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))

							elsif (params['zona_id'].to_i == 7 || params['zona_id'].to_i == 16)

							    builder.MEM(Dato.where(["tdato_id = 1 and zona_id in (7,16) and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.TER(0)
								builder.GEN(0)
							    builder.DIS(Dato.where(["tdato_id = 1 and zona_id in (8,17) and distribuidora_id = ? and periodo = ?",params['distribuidora_id'],p.periodo]).sum(:energia))
								builder.GMA(0)
								builder.GME(0)
								builder.PRO(0)
								builder.REC(0)

							else

			  				    builder.MEM(Dato.where(["tdato_id = 1 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.TER(Dato.where(["tdato_id = 2 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.GEN(Dato.where(["tdato_id = 3 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.DIS(Dato.where(["tdato_id = 4 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.GMA(Dato.where(["tdato_id = 5 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.GME(Dato.where(["tdato_id = 6 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.PRO(Dato.where(["tdato_id = 7 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))
								builder.REC(Dato.where(["tdato_id = 8 and distribuidora_id = ? and periodo = ? and zona_id = ?",params['distribuidora_id'],p.periodo,params['zona_id']]).sum(:energia))

							end
					}
				}
			}
		}

		render :xml=> buffer

	end

  # GET /datos
  # GET /datos.xml
  def index
    @datos = Dato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @datos }
    end
  end

  # GET /datos/1
  # GET /datos/1.xml
  def show
    @dato = Dato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dato }
    end
  end

  # GET /datos/new
  # GET /datos/new.xml
  def new
    @dato = Dato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dato }
    end
  end

  # GET /datos/1/edit
  def edit
    @dato = Dato.find(params[:id])
  end

  # POST /datos
  # POST /datos.xml
  def create
    @dato = Dato.new(params[:dato])

    respond_to do |format|
      if @dato.save
        format.html { redirect_to(@dato, :notice => 'Dato was successfully created.') }
        format.xml  { render :xml => @dato, :status => :created, :location => @dato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /datos/1
  # PUT /datos/1.xml
  def update
    @dato = Dato.find(params[:id])

    respond_to do |format|
      if @dato.update_attributes(params[:dato])
        format.html { redirect_to(@dato, :notice => 'Dato was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /datos/1
  # DELETE /datos/1.xml
  def destroy
    @dato = Dato.find(params[:id])
    @dato.destroy

    respond_to do |format|
      format.html { redirect_to(datos_url) }
      format.xml  { head :ok }
    end
  end
end
