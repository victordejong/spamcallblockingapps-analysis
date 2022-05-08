package androidx.room;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.sqlite.p008db.SupportSQLiteOpenHelper;
import java.io.File;
/* loaded from: classes-dex2jar.jar:androidx/room/SQLiteCopyOpenHelperFactory.class */
public class SQLiteCopyOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @Nullable
    public final String mCopyFromAssetPath;
    @Nullable
    public final File mCopyFromFile;
    @NonNull
    public final SupportSQLiteOpenHelper.Factory mDelegate;

    public SQLiteCopyOpenHelperFactory(@Nullable String str, @Nullable File file, @NonNull SupportSQLiteOpenHelper.Factory factory) {
        this.mCopyFromAssetPath = str;
        this.mCopyFromFile = file;
        this.mDelegate = factory;
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        return new SQLiteCopyOpenHelper(configuration.context, this.mCopyFromAssetPath, this.mCopyFromFile, configuration.callback.version, this.mDelegate.create(configuration));
    }
}
