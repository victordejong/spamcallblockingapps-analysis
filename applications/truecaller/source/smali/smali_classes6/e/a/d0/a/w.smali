.class public final Le/a/d0/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/a/w$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Le/a/j2;

.field public final c:Le/a/d0/a/j;

.field public final d:Le/a/d0/a/w;

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/x4/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/o/a/j/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/d0/a/j;Le/a/j2;Le/a/p5/h0;Le/a/d0/a/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/d0/a/w;->d:Le/a/d0/a/w;

    .line 3
    iput-object p3, p0, Le/a/d0/a/w;->a:Le/a/p5/h0;

    .line 4
    iput-object p2, p0, Le/a/d0/a/w;->b:Le/a/j2;

    .line 5
    iput-object p1, p0, Le/a/d0/a/w;->c:Le/a/d0/a/j;

    .line 6
    new-instance p1, Le/a/d0/a/w$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/d0/a/w$b;-><init>(Le/a/d0/a/w;I)V

    iput-object p1, p0, Le/a/d0/a/w;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/d0/a/w$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/d0/a/w$b;-><init>(Le/a/d0/a/w;I)V

    iput-object p1, p0, Le/a/d0/a/w;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/d0/a/w$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/d0/a/w$b;-><init>(Le/a/d0/a/w;I)V

    iput-object p1, p0, Le/a/d0/a/w;->g:Ljavax/inject/Provider;

    return-void
.end method
