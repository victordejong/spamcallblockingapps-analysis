.class public final Lm/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/h$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/h$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lm/h;
    .locals 4

    .line 1
    new-instance v0, Lm/h;

    iget-object v1, p0, Lm/h$a;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lm/h;-><init>(Ljava/util/Set;Lm/k0/k/c;ILkotlin/w/c/g;)V

    return-object v0
.end method
