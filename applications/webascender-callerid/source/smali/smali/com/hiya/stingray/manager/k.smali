.class public final synthetic Lcom/hiya/stingray/manager/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/k;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/k;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/k;->f:Lcom/hiya/stingray/manager/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/hiya/stingray/manager/o1;->D(Ljava/util/List;)Ljava/lang/Iterable;

    return-object p1
.end method
