.class public final Le/a/a/q0/m;
.super Le/a/g3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "spamMessages"

    invoke-direct {p0, v0, p1}, Le/a/g3/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
