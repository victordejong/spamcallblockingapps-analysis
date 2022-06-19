.class public final Le/a/w4/s/l0$a;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/r0;
.implements Le/a/e/z0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/s/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/d0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Le/a/h/d0;

    invoke-direct {p1}, Le/a/h/d0;-><init>()V

    iput-object p1, p0, Le/a/w4/s/l0$a;->b:Le/a/h/d0;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Le/a/w4/s/l0$a;->b:Le/a/h/d0;

    .line 1
    iget-boolean v0, v0, Le/a/h/d0;->b:Z

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/w4/s/l0$a;->b:Le/a/h/d0;

    .line 1
    iget-object v0, v0, Le/a/h/e0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Y3(Z)V
    .locals 1

    iget-object v0, p0, Le/a/w4/s/l0$a;->b:Le/a/h/d0;

    .line 1
    iput-boolean p1, v0, Le/a/h/d0;->b:Z

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/a/w4/s/l0$a;->b:Le/a/h/d0;

    .line 1
    iput-object p1, v0, Le/a/h/e0;->a:Ljava/lang/String;

    return-void
.end method
