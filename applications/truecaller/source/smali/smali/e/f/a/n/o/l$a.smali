.class public Le/f/a/n/o/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/i$d;

.field public final b:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "Le/f/a/n/o/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Le/f/a/n/o/i$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/o/l$a$a;

    invoke-direct {v0, p0}, Le/f/a/n/o/l$a$a;-><init>(Le/f/a/n/o/l$a;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Le/f/a/t/k/a;->a(ILe/f/a/t/k/a$b;)Ln3/k/h/e;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/o/l$a;->b:Ln3/k/h/e;

    .line 4
    iput-object p1, p0, Le/f/a/n/o/l$a;->a:Le/f/a/n/o/i$d;

    return-void
.end method
