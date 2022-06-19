.class public final Le/a/w4/s/g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->Vj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w4/s/g0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;Z)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/g0$c;->a:Le/a/w4/s/g0;

    iput-boolean p2, p0, Le/a/w4/s/g0$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0$c;->a:Le/a/w4/s/g0;

    iget-boolean v1, p0, Le/a/w4/s/g0$c;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/a/w4/s/g0;->Uj(Ljava/lang/String;Z)V

    return-void
.end method
