.class public final Le/q/d/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/f0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/f0/h;

    const-string v1, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/q/d/d/b;->a:Ls1/f0/h;

    const-string v0, "(((?:(?i:http|https|rtsp)://(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    sget-object v1, Le/q/d/d/a;->e:Ljava/lang/String;

    const-string v2, ")"

    const-string v3, "(?:"

    const-string v4, "\\:\\d{1,5}"

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")?"

    const-string v3, "("

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v3, Le/q/d/d/a;->f:Ljava/lang/String;

    const-string v4, "(?:\\b|$|^)"

    .line 7
    invoke-static {v0, v3, v1, v4, v2}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ls1/f0/h;

    invoke-direct {v1, v0}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    return-void
.end method
