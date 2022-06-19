.class Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/t/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/t/a/c$b;)Lf/t/a/c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lf/t/a/c$b;->a(Landroid/content/Context;)Lf/t/a/c$b$a;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lf/t/a/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/t/a/c$b$a;->c(Ljava/lang/String;)Lf/t/a/c$b$a;

    iget-object p1, p1, Lf/t/a/c$b;->c:Lf/t/a/c$a;

    .line 4
    invoke-virtual {v0, p1}, Lf/t/a/c$b$a;->b(Lf/t/a/c$a;)Lf/t/a/c$b$a;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lf/t/a/c$b$a;->d(Z)Lf/t/a/c$b$a;

    .line 6
    new-instance p1, Lf/t/a/g/c;

    invoke-direct {p1}, Lf/t/a/g/c;-><init>()V

    .line 7
    invoke-virtual {v0}, Lf/t/a/c$b$a;->a()Lf/t/a/c$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/t/a/g/c;->a(Lf/t/a/c$b;)Lf/t/a/c;

    move-result-object p1

    return-object p1
.end method
