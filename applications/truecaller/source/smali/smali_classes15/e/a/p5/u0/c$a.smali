.class public final Le/a/p5/u0/c$a;
.super Le/l/a/d$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/u0/c;->c(Ljava/util/List;Landroid/app/Activity;Le/a/p5/u0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/p5/u0/c;

.field public final synthetic b:Le/a/p5/u0/e;

.field public final synthetic c:Le/a/p5/u0/a;


# direct methods
.method public constructor <init>(Le/a/p5/u0/c;Le/a/p5/u0/e;Le/a/p5/u0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/u0/e;",
            "Le/a/p5/u0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/p5/u0/c$a;->a:Le/a/p5/u0/c;

    iput-object p2, p0, Le/a/p5/u0/c$a;->b:Le/a/p5/u0/e;

    iput-object p3, p0, Le/a/p5/u0/c$a;->c:Le/a/p5/u0/a;

    invoke-direct {p0}, Le/l/a/d$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/l/a/d;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/p5/u0/c$a;->b:Le/a/p5/u0/e;

    iget-object p2, p0, Le/a/p5/u0/c$a;->c:Le/a/p5/u0/a;

    invoke-interface {p2}, Le/a/p5/u0/a;->c()Le/a/p5/u0/d;

    move-result-object p2

    .line 2
    iget-object p2, p2, Le/a/p5/u0/d;->e:Ljava/lang/String;

    .line 3
    invoke-interface {p1, p2}, Le/a/p5/u0/e;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/p5/u0/c$a;->a:Le/a/p5/u0/c;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, Le/a/p5/u0/c;->a:Le/l/a/d;

    return-void
.end method
