.class public final Le/k/a/c/l0/s/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/s/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

.field public final b:Le/k/a/c/l0/s/m$a;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/c/i;

.field public final e:Z


# direct methods
.method public constructor <init>(Le/k/a/c/l0/s/m$a;Le/k/a/c/n0/c0;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/m$a;",
            "Le/k/a/c/n0/c0;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/m$a;->b:Le/k/a/c/l0/s/m$a;

    .line 3
    iput-object p3, p0, Le/k/a/c/l0/s/m$a;->a:Le/k/a/c/n;

    .line 4
    iget-boolean p1, p2, Le/k/a/c/n0/c0;->d:Z

    .line 5
    iput-boolean p1, p0, Le/k/a/c/l0/s/m$a;->e:Z

    .line 6
    iget-object p1, p2, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Le/k/a/c/l0/s/m$a;->c:Ljava/lang/Class;

    .line 8
    iget-object p1, p2, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    .line 9
    iput-object p1, p0, Le/k/a/c/l0/s/m$a;->d:Le/k/a/c/i;

    return-void
.end method
