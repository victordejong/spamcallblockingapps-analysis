.class public final Le/a/a/m/e3/d;
.super Le/a/a/m/e3/c;
.source "SourceFile"


# instance fields
.field public final e:Le/a/a/m/j2;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/f1$a;Le/a/h5/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/m/e3/c;-><init>(Le/a/a/m/j2;Le/a/a/m/f1$a;Le/a/h5/m;)V

    iput-object p1, p0, Le/a/a/m/e3/d;->e:Le/a/a/m/j2;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$b;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/m/f1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/e3/d;->e:Le/a/a/m/j2;

    invoke-interface {p2}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p2

    instance-of v0, p2, Le/a/a/m/d1$b;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/a/m/d1$b;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p1}, Le/a/a/m/f1;->w3()V

    :cond_1
    return-void
.end method
