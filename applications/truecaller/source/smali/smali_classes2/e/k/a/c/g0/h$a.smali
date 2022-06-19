.class public final Le/k/a/c/g0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/k/a/c/g0/e0;

.field public final b:Ljava/lang/reflect/Field;

.field public c:Le/k/a/c/g0/o;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/h$a;->a:Le/k/a/c/g0/e0;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/h$a;->b:Ljava/lang/reflect/Field;

    .line 4
    sget-object p1, Le/k/a/c/g0/o$a;->c:Le/k/a/c/g0/o$a;

    iput-object p1, p0, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    return-void
.end method
