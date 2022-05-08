package android.support.p001v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
@RequiresApi(21)
/* renamed from: android.support.v4.provider.TreeDocumentFile */
/* loaded from: classes-dex2jar.jar:android/support/v4/provider/TreeDocumentFile.class */
class TreeDocumentFile extends DocumentFile {
    private Context mContext;
    private Uri mUri;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TreeDocumentFile(@Nullable DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.mContext = context;
        this.mUri = uri;
    }

    private static void closeQuietly(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    @Nullable
    private static Uri createFile(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean canRead() {
        return DocumentsContractApi19.canRead(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean canWrite() {
        return DocumentsContractApi19.canWrite(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        Uri createFile = createFile(this.mContext, this.mUri, "vnd.android.document/directory", str);
        return createFile != null ? new TreeDocumentFile(this, this.mContext, createFile) : null;
    }

    @Override // android.support.p001v4.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        Uri createFile = createFile(this.mContext, this.mUri, str, str2);
        return createFile != null ? new TreeDocumentFile(this, this.mContext, createFile) : null;
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.mContext.getContentResolver(), this.mUri);
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean exists() {
        return DocumentsContractApi19.exists(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    @Nullable
    public String getName() {
        return DocumentsContractApi19.getName(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    @Nullable
    public String getType() {
        return DocumentsContractApi19.getType(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public Uri getUri() {
        return this.mUri;
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean isDirectory() {
        return DocumentsContractApi19.isDirectory(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean isFile() {
        return DocumentsContractApi19.isFile(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean isVirtual() {
        return DocumentsContractApi19.isVirtual(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public long lastModified() {
        return DocumentsContractApi19.lastModified(this.mContext, this.mUri);
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public long length() {
        return DocumentsContractApi19.length(this.mContext, this.mUri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cd A[LOOP:1: B:27:0x00c6->B:29:0x00cd, LOOP_END] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r15v2, types: [android.support.v4.provider.DocumentFile[]] */
    /* JADX WARN: Type inference failed for: r15v8 */
    @Override // android.support.p001v4.provider.DocumentFile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.support.p001v4.provider.DocumentFile[] listFiles() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.provider.TreeDocumentFile.listFiles():android.support.v4.provider.DocumentFile[]");
    }

    @Override // android.support.p001v4.provider.DocumentFile
    public boolean renameTo(String str) {
        try {
            Uri renameDocument = DocumentsContract.renameDocument(this.mContext.getContentResolver(), this.mUri, str);
            if (renameDocument == null) {
                return false;
            }
            this.mUri = renameDocument;
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
