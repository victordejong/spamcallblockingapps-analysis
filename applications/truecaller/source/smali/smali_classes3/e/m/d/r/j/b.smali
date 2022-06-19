.class public final synthetic Le/m/d/r/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/g;


# static fields
.field public static final synthetic a:Le/m/d/r/j/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/r/j/b;

    invoke-direct {v0}, Le/m/d/r/j/b;-><init>()V

    sput-object v0, Le/m/d/r/j/b;->a:Le/m/d/r/j/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Le/m/d/r/h;

    .line 1
    sget-object v0, Le/m/d/r/j/e;->e:Le/m/d/r/j/e$a;

    .line 2
    invoke-interface {p2, p1}, Le/m/d/r/h;->add(Ljava/lang/String;)Le/m/d/r/h;

    return-void
.end method
