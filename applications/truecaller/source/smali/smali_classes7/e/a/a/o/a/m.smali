.class public final Le/a/a/o/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/o/a/m$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/o/a/m;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l0/u/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l0/u/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/callrecording/CallRecordingManager;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/o/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/o/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/o/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/o/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l4/c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l4/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j2;Le/a/a/o/a/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/o/a/m;->b:Le/a/a/o/a/m;

    .line 3
    iput-object p1, p0, Le/a/a/o/a/m;->a:Le/a/j2;

    .line 4
    new-instance p1, Le/a/a/o/a/m$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/o/a/m$b;-><init>(Le/a/a/o/a/m;I)V

    iput-object p1, p0, Le/a/a/o/a/m;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/o/a/m;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/o/a/m$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/o/a/m$b;-><init>(Le/a/a/o/a/m;I)V

    iput-object p1, p0, Le/a/a/o/a/m;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/a/o/a/m$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/o/a/m$b;-><init>(Le/a/a/o/a/m;I)V

    iput-object p1, p0, Le/a/a/o/a/m;->f:Ljavax/inject/Provider;

    .line 8
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/o/a/m;->g:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/a/o/a/m$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/o/a/m$b;-><init>(Le/a/a/o/a/m;I)V

    iput-object p1, p0, Le/a/a/o/a/m;->h:Ljavax/inject/Provider;

    .line 10
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/o/a/m;->i:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/a/o/a/m$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/o/a/m$b;-><init>(Le/a/a/o/a/m;I)V

    iput-object p1, p0, Le/a/a/o/a/m;->j:Ljavax/inject/Provider;

    .line 12
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/o/a/m;->k:Ljavax/inject/Provider;

    return-void
.end method
