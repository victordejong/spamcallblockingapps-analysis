.class public final Le/a/g3/o;
.super Le/a/g3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Enabled"

    goto :goto_0

    :cond_0
    const-string p1, "Disabled"

    :goto_0
    const-string v0, "NotificationAccessState"

    .line 1
    invoke-direct {p0, v0, p1}, Le/a/g3/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
