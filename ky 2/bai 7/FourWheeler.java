public class FourWheeler extends Vehicle{
    private boolean powerSteer;

    public FourWheeler(String vId,String vName,int numWheels,boolean pSteer){
        vehicleNo=vId;
        vehicleName=vName;
        wheels=numWheels;

        powerSteer=pSteer;
    }

    public void showDetails(){
        System.out.println("Vehicle no: "+vehicleNo);
        System.out.println("Vehicle Name: "+wheels);

        if (powerSteer==true){
            System.out.println("Power Steering: Yes");
        }else {
            System.out.println("Power Steering:No");
        }
    }
}
