.class final synthetic Lcom/google/firebase/components/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/m/a;


# static fields
.field private static final a:Lcom/google/firebase/components/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/v;

    invoke-direct {v0}, Lcom/google/firebase/components/v;-><init>()V

    sput-object v0, Lcom/google/firebase/components/v;->a:Lcom/google/firebase/components/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/m/a;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/v;->a:Lcom/google/firebase/components/v;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/m/b;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/components/x;->b(Lcom/google/firebase/m/b;)V

    return-void
.end method
