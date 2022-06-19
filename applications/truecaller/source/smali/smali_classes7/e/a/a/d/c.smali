.class public final Le/a/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/d/c$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/d/m;

.field public final c:Le/a/a/d/c;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/n;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/p;",
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
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/messaging/newconversation/NewConversationPresenter;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/d/m;Le/a/j2;Le/a/a/d/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/d/c;->c:Le/a/a/d/c;

    .line 3
    iput-object p2, p0, Le/a/a/d/c;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/d/c;->b:Le/a/a/d/m;

    .line 5
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/c;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->g:Ljavax/inject/Provider;

    .line 9
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/c;->h:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->i:Ljavax/inject/Provider;

    .line 11
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/c;->j:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->k:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/c;->l:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->m:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Le/a/a/d/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/d/c$b;-><init>(Le/a/a/d/c;I)V

    iput-object p1, p0, Le/a/a/d/c;->n:Ljavax/inject/Provider;

    .line 16
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/c;->o:Ljavax/inject/Provider;

    return-void
.end method
