.class public final Le/a/w4/s/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->k2(Le/a/w4/s/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w4/s/g0;


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/g0$b;->a:Le/a/w4/s/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0$b;->a:Le/a/w4/s/g0;

    .line 2
    iget-object v1, v0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Le/a/w4/s/g0;->Uj(Ljava/lang/String;Z)V

    return-void
.end method
