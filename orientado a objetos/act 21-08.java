class Transporte { 
    public String empresa = "contraoriente" ; 
    public String ciudad = "B/quilla-palmar"; 

    public String getInfo(){ 
        return this.empresa + "-" + this.ciudad; 
    } 
} 

class Publico extends Transporte { 
    private int ninterno; 
    public String ruta; 

    public Publico(int n){ 
        this.ninterno = n; 
    } 

    public String getCodigo(){ 
        return this.ruta + " - " + this.ninterno; 
    } 

} 

class Particular extends Transporte { 
    public String placa; 
    public String color; 
    private int modelo; 

    @Override 
    public String getInfo(){ 
        return this.ciudad; 
    } 

    public Particular(int m){ 
        this.modelo = m; 
    } 

    public int getRtm(){ 
        return this.modelo + 5; 
    } 
} 


public class Zeta { 
    public static void main(String[] args) { 

        Publico p = new Publico(920); 
        p.ruta = "san toto"; 
        System.out.println(p.getCodigo()); 

        Publico pb = new Publico(450); 
        pb.ruta = "malambo"; 
        System.out.println(pb.getCodigo()); 


        Particular par = new Particular(2006); 
        par.placa = "HGT 491"; 
        par.color = "Rojo"; 
        System.out.println(par.getInfo()); 
        System.out.println("La tecnico mecanica se deve hace en el: " + par.getRtm()); 

        System.out.println(""); 

        Particular part = new Particular(2022); 
        part.placa = "NWR 896"; 
        part.color = "Negro"; 
        System.out.println(part.getInfo()); 
        System.out.println("La tecnico mecanica se deve hace en el: " + part.getRtm()); 
    } 
}