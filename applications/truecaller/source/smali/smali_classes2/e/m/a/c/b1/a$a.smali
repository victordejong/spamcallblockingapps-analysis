.class public final Le/m/a/c/b1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/b1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/l1/p$a;

.field public final b:Le/m/a/c/y0;

.field public final c:I


# direct methods
.method public constructor <init>(Le/m/a/c/l1/p$a;Le/m/a/c/y0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    .line 3
    iput-object p2, p0, Le/m/a/c/b1/a$a;->b:Le/m/a/c/y0;

    .line 4
    iput p3, p0, Le/m/a/c/b1/a$a;->c:I

    return-void
.end method
