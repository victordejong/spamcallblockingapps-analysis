.class public final synthetic Lcom/hiya/stingray/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/a;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/a;->f:Lcom/hiya/stingray/manager/a;

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
