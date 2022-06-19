.class public final Le/f/a/t/k/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/t/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/k/h/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/t/k/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/t/k/a$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Le/f/a/t/k/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/t/k/a$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/k/h/e;Le/f/a/t/k/a$b;Le/f/a/t/k/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/k/h/e<",
            "TT;>;",
            "Le/f/a/t/k/a$b<",
            "TT;>;",
            "Le/f/a/t/k/a$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/t/k/a$c;->c:Ln3/k/h/e;

    .line 3
    iput-object p2, p0, Le/f/a/t/k/a$c;->a:Le/f/a/t/k/a$b;

    .line 4
    iput-object p3, p0, Le/f/a/t/k/a$c;->b:Le/f/a/t/k/a$e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/t/k/a$c;->c:Ln3/k/h/e;

    invoke-interface {v0}, Ln3/k/h/e;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/a/t/k/a$c;->a:Le/f/a/t/k/a$b;

    invoke-interface {v0}, Le/f/a/t/k/a$b;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Created new "

    .line 4
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_0
    instance-of v1, v0, Le/f/a/t/k/a$d;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Le/f/a/t/k/a$d;

    invoke-interface {v1}, Le/f/a/t/k/a$d;->d()Le/f/a/t/k/d;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v1, Le/f/a/t/k/d$b;

    .line 7
    iput-boolean v2, v1, Le/f/a/t/k/d$b;->a:Z

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Le/f/a/t/k/a$d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Le/f/a/t/k/a$d;

    invoke-interface {v0}, Le/f/a/t/k/a$d;->d()Le/f/a/t/k/d;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Le/f/a/t/k/d$b;

    .line 3
    iput-boolean v1, v0, Le/f/a/t/k/d$b;->a:Z

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/a/t/k/a$c;->b:Le/f/a/t/k/a$e;

    invoke-interface {v0, p1}, Le/f/a/t/k/a$e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Le/f/a/t/k/a$c;->c:Ln3/k/h/e;

    invoke-interface {v0, p1}, Ln3/k/h/e;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
