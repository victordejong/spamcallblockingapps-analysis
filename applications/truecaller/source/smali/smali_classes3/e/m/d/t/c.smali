.class public final synthetic Le/m/d/t/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/t/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/t/c;

    invoke-direct {v0}, Le/m/d/t/c;-><init>()V

    sput-object v0, Le/m/d/t/c;->a:Le/m/d/t/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/m/d/t/d;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le/m/d/t/e;

    invoke-interface {p1, v2}, Le/m/d/m/p;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/m/d/t/d;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method
