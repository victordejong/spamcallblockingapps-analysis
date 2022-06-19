.class public final Lp3/a/n1/m1$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "u"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lp3/a/n1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lp3/a/g1;

.field public final synthetic d:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$u;->d:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/a/n1/m1$u;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lp3/a/n1/m1$u;->b:Ljava/util/Collection;

    return-void
.end method
