.class public Ln3/e0/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ln3/e0/a/c$a;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ln3/e0/a/c$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e0/a/c$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/e0/a/c$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ln3/e0/a/c$b;->c:Ln3/e0/a/c$a;

    .line 5
    iput-boolean p4, p0, Ln3/e0/a/c$b;->d:Z

    return-void
.end method
