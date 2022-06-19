.class public Ln3/m0/c0/t/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/v;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;

.field public final b:Ln3/m0/c0/t/x/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/t/u;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ln3/m0/c0/t/x/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/u;->a:Landroidx/work/impl/WorkDatabase;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/t/u;->b:Ln3/m0/c0/t/x/a;

    return-void
.end method
