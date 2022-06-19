.class public final Le/a/r1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r1$f$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Le/a/r1;

.field public final c:Le/a/r1$f;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/z/h;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/z/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r1;Landroid/view/View;Le/a/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/r1$f;->c:Le/a/r1$f;

    .line 3
    iput-object p1, p0, Le/a/r1$f;->b:Le/a/r1;

    .line 4
    iput-object p2, p0, Le/a/r1$f;->a:Landroid/view/View;

    .line 5
    new-instance p2, Le/a/r1$f$a;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, Le/a/r1$f$a;-><init>(Le/a/r1;Le/a/r1$f;I)V

    iput-object p2, p0, Le/a/r1$f;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/r1$f;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p2, Le/a/r1$f$a;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p0, p3}, Le/a/r1$f$a;-><init>(Le/a/r1;Le/a/r1$f;I)V

    iput-object p2, p0, Le/a/r1$f;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p2, Le/a/r1$f$a;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Le/a/r1$f$a;-><init>(Le/a/r1;Le/a/r1$f;I)V

    iput-object p2, p0, Le/a/r1$f;->g:Ljavax/inject/Provider;

    .line 9
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/r1$f;->h:Ljavax/inject/Provider;

    .line 10
    new-instance p2, Le/a/r1$f$a;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p0, p3}, Le/a/r1$f$a;-><init>(Le/a/r1;Le/a/r1$f;I)V

    iput-object p2, p0, Le/a/r1$f;->i:Ljavax/inject/Provider;

    return-void
.end method
