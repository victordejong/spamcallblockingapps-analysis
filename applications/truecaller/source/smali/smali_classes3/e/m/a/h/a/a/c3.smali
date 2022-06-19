.class public final synthetic Le/m/a/h/a/a/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/b;


# static fields
.field public static final synthetic a:Le/m/a/h/a/a/c3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/h/a/a/c3;

    invoke-direct {v0}, Le/m/a/h/a/a/c3;-><init>()V

    sput-object v0, Le/m/a/h/a/a/c3;->a:Le/m/a/h/a/a/c3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Le/m/a/h/a/a/f3;->e:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not sync active asset packs. %s"

    .line 2
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
