.class public final Le/a/l2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/g;

.field public static final synthetic b:Le/a/l2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/l2$a;

    invoke-direct {v0}, Le/a/l2$a;-><init>()V

    sput-object v0, Le/a/l2$a;->b:Le/a/l2$a;

    .line 2
    sget-object v0, Le/a/l2$a$a;->b:Le/a/l2$a$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/l2$a;->a:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/a/l2;
    .locals 1

    sget-object v0, Le/a/l2$a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l2;

    return-object v0
.end method
