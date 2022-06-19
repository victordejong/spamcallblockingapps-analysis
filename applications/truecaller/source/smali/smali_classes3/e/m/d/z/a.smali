.class public final synthetic Le/m/d/z/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/z/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/z/a;

    invoke-direct {v0}, Le/m/d/z/a;-><init>()V

    sput-object v0, Le/m/d/z/a;->a:Le/m/d/z/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->a(Le/m/d/m/p;)Le/m/d/z/c;

    move-result-object p1

    return-object p1
.end method
