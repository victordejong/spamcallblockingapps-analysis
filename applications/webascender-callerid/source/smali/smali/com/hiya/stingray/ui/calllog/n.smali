.class public final synthetic Lcom/hiya/stingray/ui/calllog/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# static fields
.field public static final synthetic a:Lcom/hiya/stingray/ui/calllog/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/calllog/n;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/calllog/n;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/calllog/n;->a:Lcom/hiya/stingray/ui/calllog/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lf/h/k/c;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lf/h/k/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
