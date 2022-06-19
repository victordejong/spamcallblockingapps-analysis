.class public Le/f/a/n/o/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/d0/a;

.field public final b:Le/f/a/n/o/d0/a;

.field public final c:Le/f/a/n/o/d0/a;

.field public final d:Le/f/a/n/o/d0/a;

.field public final e:Le/f/a/n/o/n;

.field public final f:Le/f/a/n/o/q$a;

.field public final g:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "Le/f/a/n/o/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/n;Le/f/a/n/o/q$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/o/l$b$a;

    invoke-direct {v0, p0}, Le/f/a/n/o/l$b$a;-><init>(Le/f/a/n/o/l$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Le/f/a/t/k/a;->a(ILe/f/a/t/k/a$b;)Ln3/k/h/e;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/o/l$b;->g:Ln3/k/h/e;

    .line 4
    iput-object p1, p0, Le/f/a/n/o/l$b;->a:Le/f/a/n/o/d0/a;

    .line 5
    iput-object p2, p0, Le/f/a/n/o/l$b;->b:Le/f/a/n/o/d0/a;

    .line 6
    iput-object p3, p0, Le/f/a/n/o/l$b;->c:Le/f/a/n/o/d0/a;

    .line 7
    iput-object p4, p0, Le/f/a/n/o/l$b;->d:Le/f/a/n/o/d0/a;

    .line 8
    iput-object p5, p0, Le/f/a/n/o/l$b;->e:Le/f/a/n/o/n;

    .line 9
    iput-object p6, p0, Le/f/a/n/o/l$b;->f:Le/f/a/n/o/q$a;

    return-void
.end method
