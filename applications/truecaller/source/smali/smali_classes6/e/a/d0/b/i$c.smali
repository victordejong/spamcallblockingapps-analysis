.class public final Le/a/d0/b/i$c;
.super Le/a/d0/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Le/a/d0/b/i;-><init>(Ljava/lang/String;JLs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    const-string v0, "CALL_STATE"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Le/a/d0/b/i;->b:J

    const-string v3, "TIMESTAMP"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "NUMBER"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
