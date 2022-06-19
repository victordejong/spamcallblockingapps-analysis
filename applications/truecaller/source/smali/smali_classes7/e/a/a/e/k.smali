.class public final Le/a/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/e/k$c;,
        Le/a/a/e/k$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/e/k;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/x;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/h0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/g0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/e0;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/z;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/e/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j2;Le/a/a/e/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/e/k;->b:Le/a/a/e/k;

    .line 3
    iput-object p1, p0, Le/a/a/e/k;->a:Le/a/j2;

    .line 4
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->g:Ljavax/inject/Provider;

    .line 9
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->h:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->i:Ljavax/inject/Provider;

    .line 11
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->j:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->k:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->l:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/a/e/k$c;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/e/k$c;-><init>(Le/a/a/e/k;I)V

    iput-object p1, p0, Le/a/a/e/k;->m:Ljavax/inject/Provider;

    .line 15
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/k;->n:Ljavax/inject/Provider;

    return-void
.end method

.method public static a()Le/a/a/e/k$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/e/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/e/k$b;-><init>(Le/a/a/e/k$a;)V

    return-object v0
.end method
