.class public final Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->Tv(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/h5/l;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;

    invoke-direct {v0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;-><init>()V

    sput-object v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/h5/l;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
