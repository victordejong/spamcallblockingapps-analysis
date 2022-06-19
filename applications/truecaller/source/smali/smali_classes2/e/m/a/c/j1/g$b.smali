.class public final Le/m/a/c/j1/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/j1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/m/a/c/j1/f;

.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/j1/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/c/j1/f;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/j1/f;",
            "Z",
            "Ljava/util/List<",
            "Le/m/a/c/j1/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/j1/g$b;->a:Le/m/a/c/j1/f;

    .line 3
    iput-boolean p2, p0, Le/m/a/c/j1/g$b;->b:Z

    .line 4
    iput-object p3, p0, Le/m/a/c/j1/g$b;->c:Ljava/util/List;

    return-void
.end method
