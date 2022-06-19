.class public Le/f/a/n/o/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/t/k/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/t/k/a$b<",
        "Le/f/a/n/o/i<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/f/a/n/o/l$a;


# direct methods
.method public constructor <init>(Le/f/a/n/o/l$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/n/o/l$a$a;->a:Le/f/a/n/o/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/f/a/n/o/i;

    iget-object v1, p0, Le/f/a/n/o/l$a$a;->a:Le/f/a/n/o/l$a;

    iget-object v2, v1, Le/f/a/n/o/l$a;->a:Le/f/a/n/o/i$d;

    iget-object v1, v1, Le/f/a/n/o/l$a;->b:Ln3/k/h/e;

    invoke-direct {v0, v2, v1}, Le/f/a/n/o/i;-><init>(Le/f/a/n/o/i$d;Ln3/k/h/e;)V

    return-object v0
.end method
