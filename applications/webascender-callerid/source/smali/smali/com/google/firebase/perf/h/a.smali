.class final synthetic Lcom/google/firebase/perf/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/e;


# static fields
.field private static final a:Lcom/google/firebase/perf/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/h/a;

    invoke-direct {v0}, Lcom/google/firebase/perf/h/a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/h/a;->a:Lcom/google/firebase/perf/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lg/f/a/b/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/h/a;->a:Lcom/google/firebase/perf/h/a;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/perf/j/i;

    invoke-virtual {p1}, Lcom/google/protobuf/a;->o()[B

    move-result-object p1

    return-object p1
.end method
