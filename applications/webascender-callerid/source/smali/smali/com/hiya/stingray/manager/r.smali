.class public final synthetic Lcom/hiya/stingray/manager/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/r;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/r;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/r;->f:Lcom/hiya/stingray/manager/r;

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

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lcom/hiya/stingray/manager/o1;->c0(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
