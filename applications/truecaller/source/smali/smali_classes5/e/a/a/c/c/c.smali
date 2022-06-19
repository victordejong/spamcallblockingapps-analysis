.class public final Le/a/a/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/c/c$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/c/c/k;

.field public final c:Le/a/a/c/c/c;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/p;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o8/i;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o8/g;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o8/e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o8/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/c/k;Le/a/j2;Le/a/a/c/c/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/c/c;->c:Le/a/a/c/c/c;

    .line 3
    iput-object p2, p0, Le/a/a/c/c/c;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/c/c/c;->b:Le/a/a/c/c/k;

    .line 5
    new-instance p1, Lo3/c/a;

    invoke-direct {p1}, Lo3/c/a;-><init>()V

    iput-object p1, p0, Le/a/a/c/c/c;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/c/c/c$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/c$b;-><init>(Le/a/a/c/c/c;I)V

    iput-object p1, p0, Le/a/a/c/c/c;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/c/c;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/a/c/c/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/c$b;-><init>(Le/a/a/c/c/c;I)V

    iput-object p1, p0, Le/a/a/c/c/c;->g:Ljavax/inject/Provider;

    .line 9
    iget-object p2, p0, Le/a/a/c/c/c;->d:Ljavax/inject/Provider;

    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-static {p2, p1}, Lo3/c/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 10
    new-instance p1, Le/a/a/c/c/c$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/c$b;-><init>(Le/a/a/c/c/c;I)V

    iput-object p1, p0, Le/a/a/c/c/c;->h:Ljavax/inject/Provider;

    .line 11
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/c/c;->i:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/a/c/c/c$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/c/c/c$b;-><init>(Le/a/a/c/c/c;I)V

    iput-object p1, p0, Le/a/a/c/c/c;->j:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/c/c;->k:Ljavax/inject/Provider;

    return-void
.end method
