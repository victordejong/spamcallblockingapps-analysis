.class public final synthetic Le/a/e/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final synthetic a:Le/a/e/a/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e/a/u;

    invoke-direct {v0}, Le/a/e/a/u;-><init>()V

    sput-object v0, Le/a/e/a/u;->a:Le/a/e/a/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    sget p1, Le/a/e/a/k3;->s0:I

    const-string p1, "qaServer"

    .line 2
    invoke-static {p1, p2}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method
