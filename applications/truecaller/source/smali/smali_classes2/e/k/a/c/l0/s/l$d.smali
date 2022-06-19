.class public final Le/k/a/c/l0/s/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/s/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/k/a/c/l0/s/l;


# direct methods
.method public constructor <init>(Le/k/a/c/n;Le/k/a/c/l0/s/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/l0/s/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    return-void
.end method
