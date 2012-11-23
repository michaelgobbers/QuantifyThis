package be.mume.quantifythis.helpers;

import org.apache.http.client.CookieStore;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 22/11/12
 * Time: 21:35
 * To change this template use File | Settings | File Templates.
 */
public class CookieHelper {
    private CookieStore cookies;
    private static CookieHelper instance;

    private CookieHelper(){

    }

    public void setCookies(CookieStore cookies){
        this.cookies = cookies;
    }

    public CookieStore getCookies(){
        return cookies;
    }

    public static CookieHelper getInstance(){
        if(instance==null){
            instance = new CookieHelper();
        }
        return instance;
    }
}
