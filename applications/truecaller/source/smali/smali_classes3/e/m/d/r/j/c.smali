.class public final synthetic Le/m/d/r/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/g;


# static fields
.field public static final synthetic a:Le/m/d/r/j/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/r/j/c;

    invoke-direct {v0}, Le/m/d/r/j/c;-><init>()V

    sput-object v0, Le/m/d/r/j/c;->a:Le/m/d/r/j/c;

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

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Le/m/d/r/h;

    .line 1
    sget-object v0, Le/m/d/r/j/e;->e:Le/m/d/r/j/e$a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Le/m/d/r/h;->add(Z)Le/m/d/r/h;

    return-void
.end method
