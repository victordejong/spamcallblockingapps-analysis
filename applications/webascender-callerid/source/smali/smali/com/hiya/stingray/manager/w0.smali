.class public final synthetic Lcom/hiya/stingray/manager/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic f:Lcom/hiya/stingray/manager/w0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/w0;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/w0;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/w0;->f:Lcom/hiya/stingray/manager/w0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hiya/stingray/t/n0;

    check-cast p2, Lcom/hiya/stingray/t/n0;

    invoke-static {p1, p2}, Lcom/hiya/stingray/manager/z3;->m(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/n0;)I

    move-result p1

    return p1
.end method
