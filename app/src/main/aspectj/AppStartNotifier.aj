import com.albert.snow.aspectj.MainActivity;
import android.util.Log;

aspect AppStartNotifier {

    pointcut postInit(): within(MainActivity+) && execution(* MainActivity+.test());

    after() returning: postInit() {
        Log.i("AspectJ", "after app test");
    }

    before () : postInit() {
        Log.i("AspectJ", "before app test");
    }

}