.class public final Le/a/a/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/d/a/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/d/a/c;

.field public final c:Le/a/a/d/a/b;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/d/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/d/a/c;Le/a/j2;Le/a/a/d/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/d/a/b;->c:Le/a/a/d/a/b;

    .line 3
    iput-object p2, p0, Le/a/a/d/a/b;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/d/a/b;->b:Le/a/a/d/a/c;

    .line 5
    new-instance p1, Le/a/a/d/a/b$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/d/a/b$b;-><init>(Le/a/a/d/a/b;I)V

    iput-object p1, p0, Le/a/a/d/a/b;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/a/b;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/a/d/a/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/d/a/b$b;-><init>(Le/a/a/d/a/b;I)V

    iput-object p1, p0, Le/a/a/d/a/b;->f:Ljavax/inject/Provider;

    .line 8
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/a/b;->g:Ljavax/inject/Provider;

    return-void
.end method
