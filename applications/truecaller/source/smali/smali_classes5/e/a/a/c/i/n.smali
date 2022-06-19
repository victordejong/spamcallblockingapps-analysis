.class public final Le/a/a/c/i/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/i/n$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/i/c;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/c/i/n;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/e;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/k;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/j;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/b;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/i/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/i/c;Le/a/j2;Le/a/a/c/i/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/i/n;->c:Le/a/a/c/i/n;

    .line 3
    iput-object p1, p0, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    .line 4
    iput-object p2, p0, Le/a/a/c/i/n;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/c/i/n$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/i/n$b;-><init>(Le/a/a/c/i/n;I)V

    iput-object p1, p0, Le/a/a/c/i/n;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/n;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/a/c/i/n$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/c/i/n$b;-><init>(Le/a/a/c/i/n;I)V

    iput-object p1, p0, Le/a/a/c/i/n;->f:Ljavax/inject/Provider;

    .line 8
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/n;->g:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/a/c/i/n$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/i/n$b;-><init>(Le/a/a/c/i/n;I)V

    iput-object p1, p0, Le/a/a/c/i/n;->h:Ljavax/inject/Provider;

    .line 10
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/n;->i:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/a/c/i/n$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/c/i/n$b;-><init>(Le/a/a/c/i/n;I)V

    iput-object p1, p0, Le/a/a/c/i/n;->j:Ljavax/inject/Provider;

    .line 12
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/i/n;->k:Ljavax/inject/Provider;

    return-void
.end method
