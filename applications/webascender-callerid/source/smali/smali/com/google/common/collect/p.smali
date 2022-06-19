.class public abstract Lcom/google/common/collect/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/p$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/p;

.field private static final b:Lcom/google/common/collect/p;

.field private static final c:Lcom/google/common/collect/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/p$a;

    invoke-direct {v0}, Lcom/google/common/collect/p$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/p;->a:Lcom/google/common/collect/p;

    .line 2
    new-instance v0, Lcom/google/common/collect/p$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/p$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/p;->b:Lcom/google/common/collect/p;

    .line 3
    new-instance v0, Lcom/google/common/collect/p$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/p$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/p;->c:Lcom/google/common/collect/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->b:Lcom/google/common/collect/p;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->c:Lcom/google/common/collect/p;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->a:Lcom/google/common/collect/p;

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->a:Lcom/google/common/collect/p;

    return-object v0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/p;"
        }
    .end annotation
.end method

.method public abstract e()I
.end method
