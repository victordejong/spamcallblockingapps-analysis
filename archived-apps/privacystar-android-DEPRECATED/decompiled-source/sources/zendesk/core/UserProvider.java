package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserProvider.class */
public interface UserProvider {
    void addTags(@NonNull List<String> list, @Nullable ZendeskCallback<List<String>> zendeskCallback);

    void deleteTags(@NonNull List<String> list, @Nullable ZendeskCallback<List<String>> zendeskCallback);

    void getUser(@Nullable ZendeskCallback<User> zendeskCallback);

    void getUserFields(@Nullable ZendeskCallback<List<UserField>> zendeskCallback);

    void setUserFields(@NonNull Map<String, String> map, @Nullable ZendeskCallback<Map<String, String>> zendeskCallback);
}
