.class public final synthetic Le/m/h/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/a/b/d;

    invoke-direct {v0}, Le/m/h/a/b/d;-><init>()V

    sput-object v0, Le/m/h/a/b/d;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/m/h/a/d/d;

    const-class v1, Le/m/h/a/d/h;

    invoke-interface {p1, v1}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/h/a/d/d;-><init>(Le/m/d/v/b;)V

    return-object v0
.end method
