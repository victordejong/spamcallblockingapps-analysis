.class public final Le/m/b/y/a/c/a$c$a;
.super Le/m/b/x/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/c/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private altitude:Ljava/lang/Double;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Le/m/b/x/d/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c$a;->l()Le/m/b/y/a/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c$a;->l()Le/m/b/y/a/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$c$a;

    return-object p1
.end method

.method public bridge synthetic i()Le/m/b/x/c/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c$a;->l()Le/m/b/y/a/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$c$a;

    return-object p1
.end method

.method public l()Le/m/b/y/a/c/a$c$a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    check-cast v0, Le/m/b/y/a/c/a$c$a;

    return-object v0
.end method
