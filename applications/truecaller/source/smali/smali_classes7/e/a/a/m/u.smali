.class public final Le/a/a/m/u;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/m0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/a/m/m0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
