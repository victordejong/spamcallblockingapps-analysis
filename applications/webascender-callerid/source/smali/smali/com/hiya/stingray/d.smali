.class public final synthetic Lcom/hiya/stingray/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/d;

    invoke-direct {v0}, Lcom/hiya/stingray/d;-><init>()V

    sput-object v0, Lcom/hiya/stingray/d;->f:Lcom/hiya/stingray/d;

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

    check-cast p1, Lg/g/a/a/i/o/a;

    invoke-virtual {p1}, Lg/g/a/a/i/o/a;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
