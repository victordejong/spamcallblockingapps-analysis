.class public final Le/a/g3/a;
.super Le/a/g3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/truecaller/buildinfo/BuildName;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UNDEFINED"

    :goto_0
    const-string v0, "BuildName"

    invoke-direct {p0, v0, p1}, Le/a/g3/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
