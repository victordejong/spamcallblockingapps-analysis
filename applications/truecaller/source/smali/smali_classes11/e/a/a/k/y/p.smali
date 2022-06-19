.class public final Le/a/a/k/y/p;
.super Le/a/a/k/w;
.source "SourceFile"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "Telephony.Mms.CONTENT_URI"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Le/a/a/k/w;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Le/a/a/k/y/p;->d:Z

    return-void
.end method
