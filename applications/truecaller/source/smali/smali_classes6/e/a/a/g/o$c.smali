.class public Le/a/a/g/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lw3/b/a/b;

.field public final c:Lw3/b/a/b;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/a/k/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/b/a/b;Lw3/b/a/b;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/Set<",
            "Le/a/a/k/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/g/o$c;->b:Lw3/b/a/b;

    .line 3
    iput-object p2, p0, Le/a/a/g/o$c;->c:Lw3/b/a/b;

    .line 4
    iput p3, p0, Le/a/a/g/o$c;->a:I

    .line 5
    iput-object p4, p0, Le/a/a/g/o$c;->d:Ljava/util/Set;

    return-void
.end method
